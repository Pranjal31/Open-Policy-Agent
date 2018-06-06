package opa.example

import data.roles
import data.features
import data.services

matched_service[s] {
    roles[i].role_id =  input.role[_]
    roles[i].features[_] = features[j].feature_id
    features[j].services[_] = services[k].service_id  
    features[j].lob = input.lob
    services[k].service_url = input.uri
    services[k].service_type = input.method
    services[k].service_id = s
}

