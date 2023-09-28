# classes3.dex

.class public final Landroid/telephony/ims/SipDelegateConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDelegateConfiguration$Builder;,
        Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;,
        Landroid/telephony/ims/SipDelegateConfiguration$TransportType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SipDelegateConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIP_TRANSPORT_TCP:I = 0x1

.field public static final SIP_TRANSPORT_UDP:I = 0x0

.field public static final UDP_PAYLOAD_SIZE_UNDEFINED:I = -0x1


# instance fields
.field private mAssociatedUriHeader:Ljava/lang/String;

.field private mCniHeader:Ljava/lang/String;

.field private mContactUserParam:Ljava/lang/String;

.field private mGruu:Landroid/net/Uri;

.field private mHomeDomain:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

.field private mIsSipCompactFormEnabled:Z

.field private mIsSipKeepaliveEnabled:Z

.field private final mLocalAddress:Ljava/net/InetSocketAddress;

.field private mMaxUdpPayloadSize:I

.field private mNatAddress:Ljava/net/InetSocketAddress;

.field private mPaniHeader:Ljava/lang/String;

.field private mPathHeader:Ljava/lang/String;

.field private mPlaniHeader:Ljava/lang/String;

.field private mPrivateUserIdentifier:Ljava/lang/String;

.field private mPublicUserIdentifier:Ljava/lang/String;

.field private mServiceRouteHeader:Ljava/lang/String;

.field private mSipAuthHeader:Ljava/lang/String;

.field private mSipAuthNonce:Ljava/lang/String;

.field private final mSipServerAddress:Ljava/net/InetSocketAddress;

.field private final mTransportType:I

.field private mUserAgentHeader:Ljava/lang/String;

.field private final mVersion:J


# direct methods
.method static bridge synthetic -$$Nest$fputmAssociatedUriHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmContactUserParam(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGruu(Landroid/telephony/ims/SipDelegateConfiguration;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHomeDomain(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImei(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration;Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSipCompactFormEnabled(Landroid/telephony/ims/SipDelegateConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSipKeepaliveEnabled(Landroid/telephony/ims/SipDelegateConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxUdpPayloadSize(Landroid/telephony/ims/SipDelegateConfiguration;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNatAddress(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/net/InetSocketAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPaniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPathHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPlaniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrivateUserIdentifier(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPublicUserIdentifier(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceRouteHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSipAuthHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSipAuthNonce(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserAgentHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipDelegateConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipDelegateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iput-wide p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    iput p3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    iput-object p4, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iput-object p5, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method synthetic constructor <init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Landroid/telephony/ims/SipDelegateConfiguration-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-static {p1}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->fromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    :cond_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    :cond_ce
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipDelegateConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :try_start_8
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_11
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_11} :catch_12

    return-object v2

    :catch_12
    move-exception v2

    const-string v3, "SipDelegateConfiguration"

    const-string v4, "exception reading address, returning null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public copyAndIncrementVersion()Landroid/telephony/ims/SipDelegateConfiguration;
    .registers 8

    new-instance v6, Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {p0}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long v1, v0, v2

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    iget-object v4, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    iget-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iput-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iget-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    iput-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    iput v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_f7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_f7

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/SipDelegateConfiguration;

    iget-wide v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    iget-wide v5, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f5

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    if-ne v3, v4, :cond_f5

    iget-boolean v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iget-boolean v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    if-ne v3, v4, :cond_f5

    iget-boolean v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    iget-boolean v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    if-ne v3, v4, :cond_f5

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    if-ne v3, v4, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    goto :goto_f6

    :cond_f5
    move v0, v1

    :goto_f6
    return v0

    :cond_f7
    :goto_f7
    return v1
.end method

.method public getHomeDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getIpSecConfiguration()Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getMaxUdpPayloadSizeBytes()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    return v0
.end method

.method public getNatSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getPrivateUserIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicGruuUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    return-object v0
.end method

.method public getPublicUserIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSipAssociatedUriHeader()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getSipAuthenticationHeader()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getSipAuthenticationNonce()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSipCniHeader()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getSipContactUserParameter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    return-object v0
.end method

.method public getSipPaniHeader()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getSipPathHeader()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getSipPlaniHeader()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getSipServerAddress()Ljava/net/InetSocketAddress;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getSipServiceRouteHeader()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getSipUserAgentHeader()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportType()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    return v0
.end method

.method public getVersion()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSipCompactFormEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    return v0
.end method

.method public isSipKeepaliveEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDelegateConfiguration{ mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-wide v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V

    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_76

    move v0, v1

    goto :goto_77

    :cond_76
    move v0, v2

    :goto_77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    if-eqz v0, :cond_81

    invoke-virtual {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->addToParcel(Landroid/os/Parcel;)V

    :cond_81
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_86

    goto :goto_87

    :cond_86
    move v1, v2

    :goto_87
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_91

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V

    :cond_91
    return-void
.end method
