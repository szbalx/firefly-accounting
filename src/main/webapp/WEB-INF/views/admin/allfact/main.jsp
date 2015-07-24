<div ui-view>
    <div class="row">
        <div class="col-md-12 col-lg-12">
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Accounts with Allocation Factors setup</h5>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-3">
                            <a ui-sref="allocationFactor.new" class="btn btn-primary">Create</a>
                        </div>
                        <div class="col-sm-3 pull-right">
                            <div class="input-group"><input ng-model="query" type="text" placeholder="Search" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> Go!</button> </span></div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th style="width: 25%">Account</th>
                                <th>Business Segments</th>
                                <th style="width: 20%">Effectivity</th>
                                <th style="width: 10%">Last Updated</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr ng-repeat="factor in fs = (factors | filter:query)">
                                <td>{{factor.account.title}}</td>
                                <td>
                                    <ul class="list-unstyled" style="display: inline-block">
                                        <li style="display: inline-block; padding-left: 5px; padding-top: 15px;" ng-repeat="perc in factor.segmentPercentage">
                                            <span class="label">{{perc.segment.description}} <span style="padding: 3px;" class="badge-info">{{perc.value}}%</span></span>
                                        </li>
                                    </ul>
                                </td>
                                <td>{{factor.effectivity.start | date:'MMM dd, yyyy'}} to {{factor.effectivity.end | date:'MMM dd, yyyy'}}</td>
                                <td>{{factor.lastUpdated | date:'MMM dd, yyyy'}}</td>
                                <td style="width: 5%; text-align: center">
                                    <a style="padding: 0" title="View" ui-sref=".detail({accountId:factor.account.id, effectId:factor.effectivity.id})"><i class="fa fa-search"></i></a>
                                    <a style="padding: 0" title="Edit" ui-sref=".edit({accountId:factor.account.id, effectId:factor.effectivity.id})" href=""><i class="fa fa-edit"></i></a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
