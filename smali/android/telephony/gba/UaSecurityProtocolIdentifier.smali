# classes3.dex

.class public final Landroid/telephony/gba/UaSecurityProtocolIdentifier;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;,
        Landroid/telephony/gba/UaSecurityProtocolIdentifier$UaSecurityProtocol3gpp;,
        Landroid/telephony/gba/UaSecurityProtocolIdentifier$OrganizationCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/gba/UaSecurityProtocolIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final ORG_3GPP:I = 0x1

.field public static final ORG_3GPP2:I = 0x2

.field public static final ORG_GSMA:I = 0x4

.field public static final ORG_LOCAL:I = 0xff

.field public static final ORG_NONE:I = 0x0

.field public static final ORG_OMA:I = 0x3

.field private static final PROTOCOL_SIZE:I = 0x5

.field public static final UA_SECURITY_PROTOCOL_3GPP_GENERATION_TMPI:I = 0x100

.field public static final UA_SECURITY_PROTOCOL_3GPP_GENERIC_PUSH_LAYER:I = 0x5

.field public static final UA_SECURITY_PROTOCOL_3GPP_HTTP_BASED_MBMS:I = 0x3

.field public static final UA_SECURITY_PROTOCOL_3GPP_HTTP_DIGEST_AUTHENTICATION:I = 0x2

.field public static final UA_SECURITY_PROTOCOL_3GPP_IMS_MEDIA_PLANE:I = 0x6

.field public static final UA_SECURITY_PROTOCOL_3GPP_MBMS:I = 0x1

.field public static final UA_SECURITY_PROTOCOL_3GPP_SIP_BASED_MBMS:I = 0x4

.field public static final UA_SECURITY_PROTOCOL_3GPP_SUBSCRIBER_CERTIFICATE:I = 0x0

.field public static final UA_SECURITY_PROTOCOL_3GPP_TLS_BROWSER:I = 0x20000

.field public static final UA_SECURITY_PROTOCOL_3GPP_TLS_DEFAULT:I = 0x10000

.field private static final sUaSp3gppIds:[I


# instance fields
.field private mOrg:I

.field private mProtocol:I

.field private mTlsCipherSuite:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOrg(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)I
    .registers 1

    iget p0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOrg(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProtocol(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTlsCipherSuite(Landroid/telephony/gba/UaSecurityProtocolIdentifier;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misTlsSupported(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)Z
    .registers 1

    invoke-direct {p0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->isTlsSupported()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->sUaSp3gppIds:[I

    new-instance v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;

    invoke-direct {v0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;-><init>()V

    sput-object v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x100
        0x10000
        0x20000
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    iput v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    iget v0, p1, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    iput v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    iget v0, p1, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    iput v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier;Landroid/telephony/gba/UaSecurityProtocolIdentifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier;-><init>(Landroid/telephony/gba/UaSecurityProtocolIdentifier;)V

    return-void
.end method

.method private isTlsSupported()Z
    .registers 4

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_f

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_10

    :cond_f
    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    iget v3, v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    iget v3, v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    iget v3, v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public getOrg()I
    .registers 2

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    return v0
.end method

.method public getProtocol()I
    .registers 2

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    return v0
.end method

.method public getTlsCipherSuite()I
    .registers 2

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    iget v3, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UaSecurityProtocolIdentifier["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    iget v2, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mOrg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->mTlsCipherSuite:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
