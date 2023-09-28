# classes3.dex

.class public final Landroid/telephony/PreciseDataConnectionState$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PreciseDataConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mApnSetting:Landroid/telephony/data/ApnSetting;

.field private mFailCause:I

.field private mId:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkType:I

.field private mState:I

.field private mTransportType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mTransportType:I

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mId:I

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkType:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mFailCause:I

    iput-object v1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/PreciseDataConnectionState;
    .registers 11

    new-instance v9, Landroid/telephony/PreciseDataConnectionState;

    iget v1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mTransportType:I

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mId:I

    iget v3, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mState:I

    iget v4, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkType:I

    iget-object v5, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    iget v6, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mFailCause:I

    iget-object v7, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/PreciseDataConnectionState-IA;)V

    return-object v9
.end method

.method public setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p0
.end method

.method public setFailCause(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mFailCause:I

    return-object p0
.end method

.method public setId(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mId:I

    return-object p0
.end method

.method public setLinkProperties(Landroid/net/LinkProperties;)Landroid/telephony/PreciseDataConnectionState$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkType:I

    return-object p0
.end method

.method public setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mState:I

    return-object p0
.end method

.method public setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mTransportType:I

    return-object p0
.end method
