<div ng-controller="cashReceiptsMainCtrl">
    <div ui-view>
        <div class="row">
            <div class="col-md-12 col-lg-12">
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Cash Receipts</h5>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-3">
                                <a ui-sref="cashReceipts.new"><i class="fa fa-plus" title="Create"></i></a>
                            </div>
                            <div class="col-sm-3 pull-right">
                                <div class="input-group"><input ng-model="query" type="text" placeholder="Search" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> Go!</button> </span></div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <div ng-show="!doneLoading">Loading vouchers...</div>
                            <table class="table table-striped">
                                <thead>
                                <tr>

                                    <th>Code</th>
                                    <th><span class="pull-right">Amount</span></th>
                                    <th>Particulars</th>
                                    <th>Date</th>
                                    <th>Status</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr  data-dismiss="modal" ng-repeat="cashReceipts in cashReceiptsLst = (vouchers | filter:query)">
                                    <td>{{cashReceipts.localCode}}</td>
                                    <td><span class="pull-right">{{cashReceipts.amount | currency:""}}</span></td>
                                    <td>{{cashReceipts.particulars}}</td>
                                    <td>{{cashReceipts.date | date:'MMM dd, yyyy'}}</td>
                                    <td><span class="label {{documentStatusUtil.classType(cashReceipts.status)}}">{{cashReceipts.status}}</span></td>
                                    <td style="width: 5%; text-align: center">
                                        <a style='padding: 0' title='Edit' ui-sref=".edit({cashReceiptsId:cashReceipts.id})"><i class='fa fa-edit'></i></a>
                                        <a style='padding: 0' title='View' ui-sref=".detail({cashReceiptsId:cashReceipts.id})"><i class='fa fa-search'></i></a>
                                    </td>
                                </tr>
                                <tr ng-show="cashReceiptsLst.length == 0"><td colspan="7" align="center">No records found</td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>