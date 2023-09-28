# classes3.dex

.class public final Landroid/telephony/data/DataCallResponse$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataCallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mCause:I

.field private mDefaultQos:Landroid/telephony/data/Qos;

.field private mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mGatewayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHandoverFailureMode:I

.field private mId:I

.field private mInterfaceName:Ljava/lang/String;

.field private mLinkStatus:I

.field private mMtu:I

.field private mMtuV4:I

.field private mMtuV6:I

.field private mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mPduSessionId:I

.field private mProtocolType:I

.field private mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private mSuggestedRetryTime:J

.field private mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/data/DataCallResponse;
    .registers 26

    move-object/from16 v0, p0

    new-instance v23, Landroid/telephony/data/DataCallResponse;

    move-object/from16 v1, v23

    iget v2, v0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    iget-wide v3, v0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    iget v5, v0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    iget v6, v0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    iget v7, v0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    iget-object v8, v0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    iget-object v9, v0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    iget-object v10, v0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    iget-object v11, v0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    iget-object v12, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    iget v13, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    iget v14, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV4:I

    iget v15, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV6:I

    move-object/from16 v24, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    move/from16 v16, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    move/from16 v17, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    move-object/from16 v21, v1

    const/16 v22, 0x0

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;Landroid/telephony/data/DataCallResponse-IA;)V

    return-object v23
.end method

.method public setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setCause(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    return-object p0
.end method

.method public setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    return-object p0
.end method

.method public setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    return-object p0
.end method

.method public setId(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    return-object p0
.end method

.method public setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    return-object p0
.end method

.method public setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    return-object p0
.end method

.method public setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV4:I

    return-object p0
.end method

.method public setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV6:I

    return-object p0
.end method

.method public setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string/jumbo v3, "pduSessionId must be greater than or equal to0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v2, 0xf

    if-gt p1, v2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string/jumbo v1, "pduSessionId must be less than or equal to 15."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    return-object p0
.end method

.method public setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    return-object p0
.end method

.method public setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    return-object p0
.end method

.method public setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    return-object p0
.end method

.method public setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    return-object p0
.end method

.method public setSuggestedRetryTime(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    return-object p0
.end method

.method public setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    return-object p0
.end method
