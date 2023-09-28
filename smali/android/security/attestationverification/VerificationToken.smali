# classes3.dex

.class public final Landroid/security/attestationverification/VerificationToken;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/attestationverification/VerificationToken$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/attestationverification/VerificationToken;",
            ">;"
        }
    .end annotation
.end field

.field static sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

.field private final mHmac:[B

.field private final mLocalBindingType:I

.field private final mRequirements:Landroid/os/Bundle;

.field private mUid:I

.field private final mVerificationResult:I

.field private final mVerificationTime:Ljava/time/Instant;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    :cond_15
    new-instance v0, Landroid/security/attestationverification/VerificationToken$1;

    invoke-direct {v0}, Landroid/security/attestationverification/VerificationToken$1;-><init>()V

    sput-object v0, Landroid/security/attestationverification/VerificationToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/security/attestationverification/AttestationProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/attestationverification/AttestationProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/Instant;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    const-class v7, Landroid/annotation/NonNull;

    const/4 v8, 0x0

    invoke-static {v7, v8, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v1, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    const-class v7, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    invoke-static {v7, v8, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v2, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    const-class v7, Landroid/annotation/NonNull;

    invoke-static {v7, v8, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v3, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    const-class v7, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResult;

    invoke-static {v7, v8, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v4, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    const-class v7, Landroid/annotation/NonNull;

    invoke-static {v7, v8, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v5, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    const-class v7, Landroid/annotation/NonNull;

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v6, p0, Landroid/security/attestationverification/VerificationToken;->mUid:I

    return-void
.end method

.method constructor <init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[BI)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p3, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p4, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResult;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p5, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p6, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p7, p0, Landroid/security/attestationverification/VerificationToken;->mUid:I

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

.method public getAttestationProfile()Landroid/security/attestationverification/AttestationProfile;
    .registers 2

    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    return-object v0
.end method

.method public getHmac()[B
    .registers 2

    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    return-object v0
.end method

.method public getLocalBindingType()I
    .registers 2

    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    return v0
.end method

.method public getRequirements()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mUid:I

    return v0
.end method

.method public getVerificationResult()I
    .registers 2

    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    return v0
.end method

.method public getVerificationTime()Ljava/time/Instant;
    .registers 2

    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
