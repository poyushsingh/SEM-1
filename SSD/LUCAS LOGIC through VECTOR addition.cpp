#include<bits/stdc++.h>
#include<vector>
#include<iostream>
#include<fstream>
using namespace std;

vector<int> addvec(vector<int> &v1,vector<int> &v2){
	int sum=0,carry=0;

	int n1=v1.size();
	int n2=v2.size();

	int i=0;
	int j=0;
	vector<int> ans;

	while(i<n1 && j<n2){
		sum=(carry+v1[i]+v2[j])%10;
		carry=(carry+v1[i]+v2[j])/10;
		ans.push_back(sum);

		i++;
		j++;

	}
	while(i<n1) {
		sum=(carry+v1[i])%10;
		carry=(carry+v1[i])/10;
		ans.push_back(sum);
		i++;
	}

	while(j<n2) {
		sum=(carry+v2[j])%10;
		carry=(carry+v2[j])/10;
		ans.push_back(sum);
		j++;
	}

	if(carry) ans.push_back(carry);

	return ans;
}

int main(){
	int n;
	cin>>n;
	
	vector<int> l0={2};
	vector<int> l1={1};
	vector<int> t;

	for(int i=0;i<n-1;i++){
		t=addvec(l0,l1);
		l0=l1;
		l1=t;	
	}

	//cout<<t.size();
	for(int i=t.size()-1;i>=0;i--) cout<<t[i];
	cout<<endl;
	
	

}
