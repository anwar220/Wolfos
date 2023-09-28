# classes3.dex

.class public final Landroid/security/attestationverification/VerificationToken$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/attestationverification/VerificationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

.field private mBuilderFieldsSet:J

.field private mHmac:[B

.field private mLocalBindingType:I

.field private mRequirements:Landroid/os/Bundle;

.field private mUid:I

.field private mVerificationResult:I

.field private mVerificationTime:Ljava/time/Instant;


# direct methods
.method public constructor <init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[BI)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p3, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p4, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResult;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p5, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p6, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p7, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mUid:I

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/security/attestationverification/VerificationToken;
    .registers 11

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    new-instance v0, Landroid/security/attestationverification/VerificationToken;

    iget-object v3, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    iget v4, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    iget-object v5, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    iget v6, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    iget-object v7, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    iget-object v8, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    iget v9, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mUid:I

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/security/attestationverification/VerificationToken;-><init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[BI)V

    return-object v0
.end method

.method public setAttestationProfile(Landroid/security/attestationverification/AttestationProfile;)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    return-object p0
.end method

.method public varargs setHmac([B)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    return-object p0
.end method

.method public setLocalBindingType(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    return-object p0
.end method

.method public setRequirements(Landroid/os/Bundle;)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    return-object p0
.end method

.method public setUid(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mUid:I

    return-object p0
.end method

.method public setVerificationResult(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    return-object p0
.end method

.method public setVerificationTime(Ljava/time/Instant;)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    return-object p0
.end method
