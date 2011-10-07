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


	public class PeopleEndpoint extends Endpoint
	{
		public function PeopleEndpoint(service:GooglePlusService)
		{
			super(service);
		}

		public function get(id:String):EndpointRequest
		{
			return invoke("/people/" + id);

		}

		public function search(query:String, maxResults:int=10, pageToken:String=null):EndpointRequest
		{

			var params:Object={query: query, maxResults: maxResults}
			if (pageToken)
				params.pageToken=pageToken;
			return invoke("/people", params);
		}

		public function listByActivity(activityId:String, collection:String, params:Object=null):EndpointRequest
		{
			return invoke("/activities/" + activityId + "/people/" + collection, params);
		}

	}
}
