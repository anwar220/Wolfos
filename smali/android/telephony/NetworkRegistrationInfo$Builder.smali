# classes3.dex

.class public final Landroid/telephony/NetworkRegistrationInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkRegistrationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccessNetworkTechnology:I

.field private mAvailableServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCellIdentity:Landroid/telephony/CellIdentity;

.field private mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

.field private mDomain:I

.field private mEmergencyOnly:Z

.field private mRegistrationState:I

.field private mRejectCause:I

.field private mRplmn:Ljava/lang/String;

.field private mTransportType:I

.field private mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/NetworkRegistrationInfo;
    .registers 15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v13, Landroid/telephony/NetworkRegistrationInfo;

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDomain:I

    iget v2, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mTransportType:I

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRegistrationState:I

    iget v4, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAccessNetworkTechnology:I

    iget v5, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRejectCause:I

    iget-boolean v6, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mEmergencyOnly:Z

    iget-object v7, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAvailableServices:Ljava/util/List;

    iget-object v8, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mCellIdentity:Landroid/telephony/CellIdentity;

    iget-object v9, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    iget-object v11, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo-IA;)V

    return-object v13
.end method

.method public setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAccessNetworkTechnology:I

    return-object p0
.end method

.method public setAvailableServices(Ljava/util/List;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/telephony/NetworkRegistrationInfo$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAvailableServices:Ljava/util/List;

    return-object p0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentity;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method public setDataSpecificInfo(Landroid/telephony/DataSpecificRegistrationInfo;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    return-object p0
.end method

.method public setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDomain:I

    return-object p0
.end method

.method public setEmergencyOnly(Z)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mEmergencyOnly:Z

    return-object p0
.end method

.method public setRegisteredPlmn(Ljava/lang/String;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    return-object p0
.end method

.method public setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRegistrationState:I

    return-object p0
.end method

.method public setRejectCause(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRejectCause:I

    return-object p0
.end method

.method public setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mTransportType:I

    return-object p0
.end method

.method public setVoiceSpecificInfo(Landroid/telephony/VoiceSpecificRegistrationInfo;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    return-object p0
.end method
