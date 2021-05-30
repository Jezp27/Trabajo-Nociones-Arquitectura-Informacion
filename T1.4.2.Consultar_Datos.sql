--------------------------------------------------
--CONSULTAS MONGODB
--------------------------------------------------
db.offer.aggregate(
[
    {
        '$group': {
            '_id': '$category', 
            'amount': {
                '$sum': 1
            }
        }
    }, {
        '$sort': {
            'amount': -1
        }
    }, {
        '$limit': 10
    }
]
);
--------------------------------------------------
db.offer.aggregate(
[
    {
        '$group': {
            '_id': '$job_type', 
            'amount': {
                '$sum': 1
            }
        }
    }, {
        '$sort': {
            'amount': -1
        }
    }
]
);
--------------------------------------------------
db.offer.aggregate(
[{$group: {
  _id: "$job_board",
  amount: {
    $sum: 1
  },
  geo: {$first:"$geo"}
}}, {$sort: {
  amount: -1
}}]
);
--------------------------------------------------
db.offer.aggregate(
[
    {
        '$group': {
            '_id': '$job_title', 
            'amount': {
                '$sum': 1
            }
        }
    }, {
        '$sort': {
            'amount': -1
        }
    }, {
        '$limit': 10
    }
]
);
------------------------------------------------
db.offer.aggregate(
[
    {
        '$group': {
            '_id': '$company_name', 
            'company_city': {
                '$first': '$city'
            }, 
            'amount': {
                '$sum': 1
            }
        }
    }, {
        '$sort': {
            'amount': -1
        }
    }, {
        '$limit': 10
    }
]
);
------------------------------------------------
db.offer.aggregate(
[
    {
        '$project': {
            'date_first_offer': {
                '$dateFromString': {
                    'dateString': '$post_date'
                }
            }
        }
    }, {
        '$sort': {
            'date_first_offer': 1
        }
    }, {
        '$limit': 1
    }
]
);
------------------------------------------------
db.offer.aggregate(
[
    {
        '$project': {
            'date_last_offer': {
                '$dateFromString': {
                    'dateString': '$post_date'
                }
            }
        }
    }, {
        '$sort': {
            'date_last_offer': -1
        }
    }, {
        '$limit': 1
    }
]
);
------------------------------------------------
db.offer.aggregate(
[
    {
        '$project': {
            'date': {
                '$dateFromString': {
                    'dateString': '$post_date'
                }
            }
        }
    }, {
        '$project': {
            'year': {
                '$year': '$date'
            }, 
            'month': {
                '$month': '$date'
            }
        }
    }, {
        '$group': {
            '_id': {
                'year': '$year', 
                'month': '$month'
            }, 
            'year': {
                '$first': '$year'
            }, 
            'mont': {
                '$first': '$month'
            }, 
            'amount': {
                '$sum': 1
            }
        }
    }, {
        '$sort': {
            'amount': -1
        }
    }
]
);
------------------------------------------------