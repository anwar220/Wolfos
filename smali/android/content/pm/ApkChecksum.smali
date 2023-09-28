# classes.dex

.class public final Landroid/content/pm/ApkChecksum;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ApkChecksum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChecksum:Landroid/content/pm/Checksum;

.field private final mInstallerCertificate:[B

.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mSplitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/ApkChecksum$1;

    invoke-direct {v0}, Landroid/content/pm/ApkChecksum$1;-><init>()V

    sput-object v0, Landroid/content/pm/ApkChecksum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    sget-object v3, Landroid/content/pm/Checksum;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Checksum;

    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_20

    move-object v4, v2

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_24
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_2a

    move-object v5, v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    :goto_2e
    iput-object v1, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    const-class v6, Landroid/annotation/NonNull;

    invoke-static {v6, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 7

    new-instance v0, Landroid/content/pm/Checksum;

    invoke-direct {v0, p2, p3}, Landroid/content/pm/Checksum;-><init>(I[B)V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [B

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Landroid/content/pm/Checksum;

    invoke-direct {v0, p2, p3}, Landroid/content/pm/Checksum;-><init>(I[B)V

    if-eqz p5, :cond_c

    invoke-virtual {p5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-direct {p0, p1, v0, p4, v1}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getInstallerCertificate()Ljava/security/cert/Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    return-object v2
.end method

.method public getInstallerCertificateBytes()[B
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    invoke-virtual {v0}, Landroid/content/pm/Checksum;->getType()I

    move-result v0

    return v0
.end method

.method public getValue()[B
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    invoke-virtual {v0}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_f
    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mSplitName:Ljava/lang/String;

    if-eqz v1, :cond_20

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_20
    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mChecksum:Landroid/content/pm/Checksum;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2c

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2c
    iget-object v1, p0, Landroid/content/pm/ApkChecksum;->mInstallerCertificate:[B

    if-eqz v1, :cond_33

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_33
    return-void
.end method
