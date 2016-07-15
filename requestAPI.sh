#!/usr/local/bin/bash

BASEURL="TODO"

user_login_url="${BASEURL}/api/user/login"
email="TODO"
password="TODO"
installation_id="8F24F351-B3F1-4D3C-80F5-273125A54BC5"
requestLoginAction=`curl -d "email=${email}&&password=${password}&&installation_id=${installation_id}" $user_login_url `
access_token=`echo ${requestLoginAction} | jq '.data.access_token' |tr -d '"'`
#access_token=
echo "access_token="${access_token}

sleep 0.5

declare -A urls
urls=(
	[profile_url]="${BASEURL}/api/user/profile"
	[update_profile_url]="${BASEURL}/api/user/update_profile"
	[topic_list_recommand]="${BASEURL}/api/topic/tlist"
	[topic_list_latest]="${BASEURL}/api/topic/tlist"
	[zquit]="quit"
	)

requestUserProfile()
{
	echo ""
	echo "POST 获取用户资料"
	profile_url=$1
	echo ${profile_url} 
	profile_url_parms="access_token=${access_token}"
	curl -d ${profile_url_parms} ${profile_url} | jq '.'
}

requestUpdateUserAvatar()

	echo ""
	profile_update_url=$1
	echo ${profile_update_url} 
	avatar="TODO"
	profile_update_url_parms="access_token=${access_token}&&avatar=${avatar}"
	curl -d ${profile_update_url_parms}  ${profile_update_url} | python -mjson.tool
}

size=2

requestTopicListRecommand()
{

	echo ""
	echo "POST  "
	topic_list_url=$1
	echo ${topic_list_url} 
	topic_list_url_parms="access_token=${access_token}&&type=recommend&&size=${size}"
	curl -d ${topic_list_url_parms}  ${topic_list_url} | jq '.'
}

requestTopicListLatest()
{
	echo ""
	echo "POST    "
	topic_list_url=$1
	echo ${topic_list_url} 
	topic_list_url_parms="access_token=${access_token}&&type=latest&&size=${size}"
	curl -d ${topic_list_url_parms}  ${topic_list_url} | jq '.'
}		

# 选择输入
while [[ 1 ]]; do
	echo ""
	echo "choose one of blow:"
	select key in ${!urls[*]};  
	do  
		break  
	done
	case $key in
	  	profile_url ) 			requestUserProfile ${urls[$key]} ;;
		update_profile_url ) 	requestUpdateUserAvatar ${urls[$key]} ;;
		topic_list_recommand)	requestTopicListRecommand ${urls[$key]}	;;
		topic_list_latest) requestTopicListLatest ${urls[$key]} ;;
		zquit )					exit;;
	  	*) echo "not correct input";; 
	esac 
done

