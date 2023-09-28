# classes3.dex

.class public final Landroid/security/attestationverification/AttestationProfile;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/attestationverification/AttestationProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AVF"


# instance fields
.field private final mAttestationProfileId:I

.field private final mPackageName:Ljava/lang/String;

.field private final mProfileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/security/attestationverification/AttestationProfile$1;

    invoke-direct {v0}, Landroid/security/attestationverification/AttestationProfile$1;-><init>()V

    sput-object v0, Landroid/security/attestationverification/AttestationProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/security/attestationverification/AttestationProfile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App-defined profiles must be specified with the constructor AttestationProfile#constructor(String, String)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    iput-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_16
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1c

    move-object v4, v3

    goto :goto_20

    :cond_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_20
    iput v1, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    const-class v5, Landroid/security/attestationverification/AttestationVerificationManager$AttestationProfileId;

    invoke-static {v5, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    iput-object v4, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/security/attestationverification/AttestationProfile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both packageName and profileName must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/security/attestationverification/AttestationProfile;

    iget v3, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    iget v4, v2, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    iget-object v4, v2, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public getAttestationProfileId()I
    .registers 2

    iget v0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    const-string v1, ")"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttestationProfile(package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    packed-switch v0, :pswitch_data_62

    const-string v0, "AVF"

    const-string v2, "ERROR: Missing case in AttestationProfile#toString"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ERROR"

    goto :goto_3d

    :pswitch_3a  #0x0
    const-string v0, "PROFILE_UNKNOWN"

    nop

    :goto_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AttestationProfile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_3a  #00000000
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1e
    iget-object v1, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_25
    return-void
.end method
