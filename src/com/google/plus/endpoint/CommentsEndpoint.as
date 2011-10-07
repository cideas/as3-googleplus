/*
*	Copyright (c) 2011, Conceptual Ideas
*   All rights reserved
*
*	Licensed under the Apache License, Version 2.0 (the "License");
*	you may not use this file except in compliance with the License.
*	You may obtain a copy of the License at
*
*	http://www.apache.org/licenses/LICENSE-2.0
*
*	Unless required by applicable law or agreed to in writing, software
*	distributed under the License is distributed on an "AS IS" BASIS,
*	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*	See the License for the specific language governing permissions and
*	limitations under the License.
*/
package com.google.plus.endpoint
{
	import com.google.plus.GooglePlusService;

	public class CommentsEndpoint extends Endpoint
	{
		public static const ORDER_BY_RECENT:String="recent";
		public static const ORDER_BY_BEST:String="best";

		public function CommentsEndpoint(service:GooglePlusService)
		{
			super(service);
		}

		public function list(activityId:String, maxResults:int=20, params:Object=null, nextPageToken:String=null):EndpointRequest

		{
			params||={};
			params.maxResults=maxResults;
			if (nextPageToken)
				params.nextPageToken=nextPageToken;
			return invoke("/activities/" + activityId + "/comments", params);
		}

		public function get(commentId:String, params:Object=null):EndpointRequest
		{
			return invoke("/comments/" + commentId, params);
		}


	}
}
