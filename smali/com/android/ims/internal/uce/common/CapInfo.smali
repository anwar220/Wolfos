# classes4.dex

.class public Lcom/android/ims/internal/uce/common/CapInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALLCOMPOSER:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gppservice.ims.icsi.gsma.callcomposer\""

.field public static final CAPDISC_VIA_PRESENCE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

.field public static final CHATBOT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gppapplication.ims.iari.rcs.chatbot\""

.field public static final CHATBOTROLE:Ljava/lang/String; = "+g.gsma.rcs.isbot"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/common/CapInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_TRANSFER:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

.field public static final FILE_TRANSFER_HTTP:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

.field public static final FILE_TRANSFER_SNF:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw\""

.field public static final FILE_TRANSFER_THUMBNAIL:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftthumb\""

.field public static final FULL_SNF_GROUPCHAT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fullsfgroupchat\""

.field public static final GEOPULL:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull\""

.field public static final GEOPULL_FT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft\""

.field public static final GEOPUSH:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

.field public static final GEOSMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gppapplication.ims.iari.rcs.geosms\""

.field public static final IMAGE_SHARE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

.field public static final INSTANT_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

.field public static final IP_VIDEO:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\";video"

.field public static final IP_VOICE:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

.field public static final MMTEL_CALLCOMPOSER:Ljava/lang/String; = "+g.gsma.callcomposer"

.field public static final POSTCALL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gppservice.ims.icsi.gsma.callunanswered\""

.field public static final RCS_IP_VIDEO_CALL:Ljava/lang/String; = "+g.gsma.rcs.ipvideocall"

.field public static final RCS_IP_VIDEO_ONLY_CALL:Ljava/lang/String; = "+g.gsma.rcs.ipvideoonlycall"

.field public static final RCS_IP_VOICE_CALL:Ljava/lang/String; = "+g.gsma.rcs.ipcall"

.field public static final SHAREDMAP:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gppservice.ims.icsi.gsma.sharedmap\""

.field public static final SHAREDSKETCH:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gppservice.ims.icsi.gsma.sharedsketch\""

.field public static final SOCIAL_PRESENCE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.sp\""

.field public static final STANDALONE_CHATBOT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

.field public static final STANDALONE_MSG:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg;urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

.field public static final VIDEO_SHARE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-vs\""

.field public static final VIDEO_SHARE_DURING_CS:Ljava/lang/String; = "+g.3gpp.cs-voice"


# instance fields
.field private mCallComposerSupported:Z

.field private mCapInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCapTimestamp:J

.field private mCdViaPresenceSupported:Z

.field private mChatbotRoleSupported:Z

.field private mChatbotSupported:Z

.field private mExts:[Ljava/lang/String;

.field private mFtHttpSupported:Z

.field private mFtSnFSupported:Z

.field private mFtSupported:Z

.field private mFtThumbSupported:Z

.field private mFullSnFGroupChatSupported:Z

.field private mGeoPullFtSupported:Z

.field private mGeoPullSupported:Z

.field private mGeoPushSupported:Z

.field private mGeoSmsSupported:Z

.field private mImSupported:Z

.field private mIpVideoSupported:Z

.field private mIpVoiceSupported:Z

.field private mIsSupported:Z

.field private mMmtelCallComposerSupported:Z

.field private mPostCallSupported:Z

.field private mRcsIpVideoCallSupported:Z

.field private mRcsIpVideoOnlyCallSupported:Z

.field private mRcsIpVoiceCallSupported:Z

.field private mSharedMapSupported:Z

.field private mSharedSketchSupported:Z

.field private mSmChatbotSupported:Z

.field private mSmSupported:Z

.field private mSpSupported:Z

.field private mVsDuringCSSupported:Z

.field private mVsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/CapInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addCapability(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCapInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCapTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    return-wide v0
.end method

.method public getCapabilityVersions(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExts()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    return-object v0
.end method

.method public isCallComposerSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    return v0
.end method

.method public isCapabilitySupported(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCdViaPresenceSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    return v0
.end method

.method public isChatbotRoleSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    return v0
.end method

.method public isChatbotSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    return v0
.end method

.method public isFtHttpSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    return v0
.end method

.method public isFtSnFSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    return v0
.end method

.method public isFtSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    return v0
.end method

.method public isFtThumbSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    return v0
.end method

.method public isFullSnFGroupChatSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    return v0
.end method

.method public isGeoPullFtSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    return v0
.end method

.method public isGeoPullSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    return v0
.end method

.method public isGeoPushSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    return v0
.end method

.method public isGeoSmsSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    return v0
.end method

.method public isImSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    return v0
.end method

.method public isIpVideoSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    return v0
.end method

.method public isIpVoiceSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    return v0
.end method

.method public isIsSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    return v0
.end method

.method public isMmtelCallComposerSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    return v0
.end method

.method public isPostCallSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    return v0
.end method

.method public isRcsIpVideoCallSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    return v0
.end method

.method public isRcsIpVideoOnlyCallSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    return v0
.end method

.method public isRcsIpVoiceCallSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    return v0
.end method

.method public isSharedMapSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    return v0
.end method

.method public isSharedSketchSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    return v0
.end method

.method public isSmChatbotSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    return v0
.end method

.method public isSmSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    return v0
.end method

.method public isSpSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    return v0
.end method

.method public isVsDuringCSSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    return v0
.end method

.method public isVsSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4c

    move v0, v1

    goto :goto_4d

    :cond_4c
    move v0, v2

    :goto_4d
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_57

    move v0, v1

    goto :goto_58

    :cond_57
    move v0, v2

    :goto_58
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_62

    move v0, v1

    goto :goto_63

    :cond_62
    move v0, v2

    :goto_63
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6d

    move v0, v1

    goto :goto_6e

    :cond_6d
    move v0, v2

    :goto_6e
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_78

    move v0, v1

    goto :goto_79

    :cond_78
    move v0, v2

    :goto_79
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_83

    move v0, v1

    goto :goto_84

    :cond_83
    move v0, v2

    :goto_84
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8e

    move v0, v1

    goto :goto_8f

    :cond_8e
    move v0, v2

    :goto_8f
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_99

    move v0, v1

    goto :goto_9a

    :cond_99
    move v0, v2

    :goto_9a
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a4

    move v0, v1

    goto :goto_a5

    :cond_a4
    move v0, v2

    :goto_a5
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_af

    move v0, v1

    goto :goto_b0

    :cond_af
    move v0, v2

    :goto_b0
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_ba

    move v0, v1

    goto :goto_bb

    :cond_ba
    move v0, v2

    :goto_bb
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c5

    move v0, v1

    goto :goto_c6

    :cond_c5
    move v0, v2

    :goto_c6
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_d0

    move v0, v1

    goto :goto_d1

    :cond_d0
    move v0, v2

    :goto_d1
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_db

    move v0, v1

    goto :goto_dc

    :cond_db
    move v0, v2

    :goto_dc
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e6

    move v0, v1

    goto :goto_e7

    :cond_e6
    move v0, v2

    :goto_e7
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_f1

    move v0, v1

    goto :goto_f2

    :cond_f1
    move v0, v2

    :goto_f2
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_fc

    move v0, v1

    goto :goto_fd

    :cond_fc
    move v0, v2

    :goto_fd
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_107

    move v0, v1

    goto :goto_108

    :cond_107
    move v0, v2

    :goto_108
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_112

    move v0, v1

    goto :goto_113

    :cond_112
    move v0, v2

    :goto_113
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_11d

    move v0, v1

    goto :goto_11e

    :cond_11d
    move v0, v2

    :goto_11e
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_128

    move v0, v1

    goto :goto_129

    :cond_128
    move v0, v2

    :goto_129
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_133

    move v0, v1

    goto :goto_134

    :cond_133
    move v0, v2

    :goto_134
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_13d

    goto :goto_13e

    :cond_13d
    move v1, v2

    :goto_13e
    iput-boolean v1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_158
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_158

    :cond_16e
    return-void
.end method

.method public removeCapability(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCallComposerSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    return-void
.end method

.method public setCapInfoMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    return-void
.end method

.method public setCapTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    return-void
.end method

.method public setCdViaPresenceSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    return-void
.end method

.method public setChatbotRoleSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    return-void
.end method

.method public setChatbotSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    return-void
.end method

.method public setExts([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    return-void
.end method

.method public setFtHttpSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    return-void
.end method

.method public setFtSnFSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    return-void
.end method

.method public setFtSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    return-void
.end method

.method public setFtThumbSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    return-void
.end method

.method public setFullSnFGroupChatSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    return-void
.end method

.method public setGeoPullFtSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    return-void
.end method

.method public setGeoPullSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    return-void
.end method

.method public setGeoPushSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    return-void
.end method

.method public setGeoSmsSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    return-void
.end method

.method public setImSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    return-void
.end method

.method public setIpVideoSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    return-void
.end method

.method public setIpVoiceSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    return-void
.end method

.method public setIsSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    return-void
.end method

.method public setMmtelCallComposerSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    return-void
.end method

.method public setPostCallSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    return-void
.end method

.method public setRcsIpVideoCallSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    return-void
.end method

.method public setRcsIpVideoOnlyCallSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    return-void
.end method

.method public setRcsIpVoiceCallSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    return-void
.end method

.method public setSharedMapSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    return-void
.end method

.method public setSharedSketchSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    return-void
.end method

.method public setSmChatbotSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    return-void
.end method

.method public setSmSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    return-void
.end method

.method public setSpSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    return-void
.end method

.method public setVsDuringCSSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    return-void
.end method

.method public setVsSupported(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_aa

    :cond_c6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
