# classes3.dex

.class Landroid/telephony/data/DataService$DataServiceHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/data/DataService;


# direct methods
.method constructor <init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/telephony/data/DataService$DataServiceProvider;

    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_224

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_1c  #0x10
    if-nez v15, :cond_22

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_22
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    :try_start_27
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_33

    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    goto :goto_3a

    :cond_33
    iget-object v0, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onApnUnthrottled(Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3a} :catch_3e

    :goto_3a
    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :catch_3e
    move-exception v0

    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call onApnUnthrottled. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_5b  #0xf
    if-nez v15, :cond_61

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_61
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_6c  #0xe
    if-nez v15, :cond_72

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_72
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_7d  #0xd
    if-nez v15, :cond_83

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_83
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    iget v5, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_95

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_96

    :cond_95
    const/4 v4, 0x0

    :goto_96
    invoke-virtual {v15, v5, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_9d  #0xc
    if-nez v15, :cond_a3

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_a3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    iget v5, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v6, :cond_b5

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v6}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_b6

    :cond_b5
    const/4 v4, 0x0

    :goto_b6
    invoke-virtual {v15, v5, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->startHandover(ILandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_bd  #0xb
    if-nez v15, :cond_c3

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_c3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    :try_start_c8
    iget-object v0, v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v5, v4, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v0, v5}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_cf} :catch_d3

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :catch_d3
    move-exception v0

    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call onDataCallListChanged. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_f0  #0xa
    if-nez v15, :cond_f6

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_f6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_101  #0x9
    if-nez v15, :cond_107

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_107
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_112  #0x8
    if-nez v15, :cond_118

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_118
    new-instance v0, Landroid/telephony/data/DataServiceCallback;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v0, v4}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v15, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_128  #0x7
    if-nez v15, :cond_12e

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_12e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetDataProfileRequest;

    iget-object v5, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v6, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    iget-object v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_142

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_143

    :cond_142
    const/4 v4, 0x0

    :goto_143
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_14a  #0x6
    if-nez v15, :cond_150

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_150
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    iget-object v5, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v6, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    iget-object v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_164

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_165

    :cond_164
    const/4 v4, 0x0

    :goto_165
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_16c  #0x5
    if-nez v15, :cond_172

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_172
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    iget v5, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v6, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    iget-object v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_186

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_187

    :cond_186
    const/4 v4, 0x0

    :goto_187
    invoke-virtual {v15, v5, v6, v4}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :pswitch_18e  #0x4
    if-nez v15, :cond_194

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_221

    :cond_194
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetupDataCallRequest;

    iget v5, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    iget-object v6, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v7, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    iget-boolean v8, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    iget v9, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    iget-object v10, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    iget v11, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->pduSessionId:I

    iget-object v12, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iget-object v13, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iget-boolean v14, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->matchAllRuleAllowed:Z

    iget-object v4, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v4, :cond_1ba

    new-instance v4, Landroid/telephony/data/DataServiceCallback;

    iget-object v2, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v4, v2}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    move-object/from16 v16, v4

    goto :goto_1bc

    :cond_1ba
    const/16 v16, 0x0

    :goto_1bc
    move-object v4, v15

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v4 .. v15}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V

    move-object/from16 v4, p1

    goto :goto_221

    :pswitch_1c6  #0x3
    move-object v2, v15

    const/4 v0, 0x0

    :goto_1c8
    iget-object v2, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e9

    iget-object v2, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v2}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/telephony/data/DataService$DataServiceProvider;

    if-eqz v15, :cond_1e6

    invoke-virtual {v15}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    :cond_1e6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c8

    :cond_1e9
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v4, p1

    goto :goto_222

    :pswitch_1f5  #0x2
    move-object v2, v15

    if-eqz v2, :cond_207

    invoke-virtual {v2}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v4, p1

    goto :goto_221

    :cond_207
    move-object/from16 v4, p1

    goto :goto_221

    :pswitch_20a  #0x1
    move-object v2, v15

    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    move-object/from16 v4, p1

    iget v5, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/telephony/data/DataService;->onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object v15

    if-eqz v15, :cond_222

    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_222

    :goto_221
    move-object v15, v2

    :cond_222
    :goto_222
    return-void

    nop

    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_20a  #00000001
        :pswitch_1f5  #00000002
        :pswitch_1c6  #00000003
        :pswitch_18e  #00000004
        :pswitch_16c  #00000005
        :pswitch_14a  #00000006
        :pswitch_128  #00000007
        :pswitch_112  #00000008
        :pswitch_101  #00000009
        :pswitch_f0  #0000000a
        :pswitch_bd  #0000000b
        :pswitch_9d  #0000000c
        :pswitch_7d  #0000000d
        :pswitch_6c  #0000000e
        :pswitch_5b  #0000000f
        :pswitch_1c  #00000010
    .end packed-switch
.end method
