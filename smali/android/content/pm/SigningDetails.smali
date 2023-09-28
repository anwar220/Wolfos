# classes.dex

.class public final Landroid/content/pm/SigningDetails;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SigningDetails$Builder;,
        Landroid/content/pm/SigningDetails$CapabilityMergeRule;,
        Landroid/content/pm/SigningDetails$CertCapabilities;,
        Landroid/content/pm/SigningDetails$SignatureSchemeVersion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAST_CERT_EXISTS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SigningDetails"

.field public static final UNKNOWN:Landroid/content/pm/SigningDetails;


# instance fields
.field private final mPastSigningCertificates:[Landroid/content/pm/Signature;

.field private final mPublicKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignatureSchemeVersion:I

.field private final mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    sput-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    new-instance v0, Landroid/content/pm/SigningDetails$1;

    invoke-direct {v0}, Landroid/content/pm/SigningDetails$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/SigningDetails;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_15

    :cond_13
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    :goto_15
    iget v1, p1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3b

    :cond_2f
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3b

    :cond_32
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    :goto_3b
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>([Landroid/content/pm/Signature;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    return-void
.end method

.method public constructor <init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;[",
            "Landroid/content/pm/Signature;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    iput p2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iput-object p3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    iput-object p4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/content/pm/SigningDetails;->toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 9

    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v0, p0

    move-object v2, p1

    goto :goto_12

    :cond_a
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move-object v0, p1

    move-object v2, p0

    :goto_12
    iget-object v3, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    :goto_1c
    if-ltz v3, :cond_2f

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_2f
    if-gez v3, :cond_32

    return-object v1

    :cond_32
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    if-ltz v3, :cond_48

    if-ltz v4, :cond_48

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    :cond_48
    if-ltz v3, :cond_4d

    if-ltz v4, :cond_4d

    return-object v1

    :cond_4d
    return-object v0

    :cond_4e
    return-object v1
.end method

.method private hasCertificateInternal(Landroid/content/pm/Signature;I)Z
    .registers 8

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v3

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_2d

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    if-eqz p2, :cond_29

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_2a

    :cond_29
    return v2

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2d
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    if-ne v3, v2, :cond_3b

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v1, v2

    :cond_3b
    return v1
.end method

.method private hasSha256CertificateInternal([BI)Z
    .registers 8

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v3

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_35

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz p2, :cond_31

    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_32

    :cond_31
    return v2

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_35
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    if-ne v3, v2, :cond_49

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    :cond_49
    return v1
.end method

.method private mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 13

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ltz v0, :cond_ed

    if-gez v2, :cond_f

    goto/16 :goto_ed

    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_15
    if-ltz v0, :cond_35

    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v0

    iget-object v6, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    new-instance v5, Landroid/content/pm/Signature;

    iget-object v6, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v0, -0x1

    aget-object v0, v6, v0

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    goto :goto_15

    :cond_35
    if-gez v0, :cond_38

    return-object p0

    :cond_38
    :goto_38
    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v6, v0, -0x1

    aget-object v0, v5, v0

    iget-object v5, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v2, -0x1

    aget-object v2, v5, v2

    new-instance v5, Landroid/content/pm/Signature;

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    if-eq v8, v9, :cond_75

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_ee

    goto :goto_75

    :pswitch_58  #0x2
    nop

    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    and-int/2addr v8, v9

    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    goto :goto_75

    :pswitch_66  #0x1
    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    goto :goto_75

    :pswitch_6e  #0x0
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    :cond_75
    :goto_75
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ltz v6, :cond_8e

    if-ltz v7, :cond_8e

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v0, v0, v6

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_8e

    :cond_8b
    move v0, v6

    move v2, v7

    goto :goto_38

    :cond_8e
    :goto_8e
    if-ltz v6, :cond_93

    if-ltz v7, :cond_93

    return-object p0

    :cond_93
    :goto_93
    if-ltz v7, :cond_a5

    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v7, -0x1

    aget-object v2, v2, v7

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v5

    goto :goto_93

    :cond_a5
    :goto_a5
    if-ltz v6, :cond_b7

    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v6, -0x1

    aget-object v2, v2, v6

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_a5

    :cond_b7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ne v0, v2, :cond_c3

    if-nez v4, :cond_c3

    return-object p0

    :cond_c3
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :try_start_c6
    new-instance v0, Landroid/content/pm/SigningDetails;

    new-array v1, v1, [Landroid/content/pm/Signature;

    new-instance v2, Landroid/content/pm/Signature;

    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-direct {v2, v5}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    aput-object v2, v1, v8

    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    new-array v5, v8, [Landroid/content/pm/Signature;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/Signature;

    invoke-direct {v0, v1, v2, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    :try_end_e3
    .catch Ljava/security/cert/CertificateException; {:try_start_c6 .. :try_end_e3} :catch_e4

    return-object v0

    :catch_e4
    move-exception v0

    const-string v1, "SigningDetails"

    const-string v2, "Caught an exception creating the merged lineage: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    :cond_ed
    :goto_ed
    return-object p0

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_6e  #00000000
        :pswitch_66  #00000001
        :pswitch_58  #00000002
    .end packed-switch
.end method

.method public static toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v1, 0x0

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method


# virtual methods
.method public checkCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 7

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1a

    if-ne p1, v0, :cond_8

    goto :goto_1a

    :cond_8
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    :cond_13
    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0

    :cond_1a
    :goto_1a
    return v1
.end method

.method public checkCapability(Ljava/lang/String;I)Z
    .registers 7

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_28

    :cond_c
    invoke-static {p1, v1}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([BI)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    return v1

    :cond_18
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_28
    :goto_28
    return v1
.end method

.method public checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3e

    if-ne p0, v0, :cond_8

    goto :goto_3e

    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    const/4 v0, 0x0

    :goto_15
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v3

    if-ge v0, v4, :cond_34

    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    aget-object v3, v3, v0

    invoke-static {v4, v3}, Landroid/content/pm/Signature;->areEffectiveMatch(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    if-ne v3, p2, :cond_31

    return v2

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_34
    return v1

    :cond_35
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areEffectiveMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    return v0

    :cond_3e
    :goto_3e
    return v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/content/pm/SigningDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/content/pm/SigningDetails;

    iget v3, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v4, v1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    if-eq v3, v4, :cond_14

    return v2

    :cond_14
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-nez v3, :cond_1f

    return v2

    :cond_1f
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_2c

    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    return v2

    :cond_2c
    iget-object v3, v1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_31

    return v2

    :cond_31
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    return v2

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v5, v4

    if-ge v3, v5, :cond_56

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    iget-object v5, v1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/content/pm/Signature;->getFlags()I

    move-result v5

    if-eq v4, v5, :cond_53

    return v2

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_56
    return v0
.end method

.method public getPastSigningCertificates()[Landroid/content/pm/Signature;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getPublicKeys()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSignatureSchemeVersion()I
    .registers 2

    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    return v0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public hasAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 7

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2c

    if-ne p1, v0, :cond_8

    goto :goto_2c

    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    const/4 v0, 0x0

    :goto_15
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v3

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_2b

    aget-object v3, v3, v0

    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    return v2

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2b
    return v1

    :cond_2c
    :goto_2c
    return v1
.end method

.method public hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z
    .registers 6

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1a

    if-ne p1, v0, :cond_8

    goto :goto_1a

    :cond_8
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    :cond_13
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v0

    return v0

    :cond_1a
    :goto_1a
    return v1
.end method

.method public hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6b

    if-eqz p1, :cond_6b

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6b

    :cond_e
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_38

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v4, v2

    if-ge v0, v4, :cond_1e

    return v1

    :cond_1e
    array-length v0, v2

    move v4, v1

    :goto_20
    if-ge v4, v0, :cond_37

    aget-object v5, v2, v4

    nop

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    return v1

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_37
    return v3

    :cond_38
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    return v3

    :cond_49
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v2, 0x0

    :goto_50
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v5, v4

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_6a

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    return v3

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_6a
    return v1

    :cond_6b
    :goto_6b
    return v1
.end method

.method public hasCertificate(Landroid/content/pm/Signature;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public hasCertificate(Landroid/content/pm/Signature;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public hasCertificate([B)Z
    .registers 4

    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {p0, v0}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v1

    return v1
.end method

.method public hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    :cond_16
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 9

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_67

    if-ne p1, v0, :cond_8

    goto :goto_67

    :cond_8
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_62

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-le v0, v2, :cond_14

    goto :goto_62

    :cond_14
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    :cond_29
    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_32
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return v2

    :cond_3d
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_61

    const/4 v3, 0x0

    :goto_44
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v5, v4

    sub-int/2addr v5, v2

    if-ge v3, v5, :cond_61

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_5e

    return v2

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_61
    return v1

    :cond_62
    :goto_62
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    :cond_67
    :goto_67
    return v1
.end method

.method public hasPastSigningCertificates()Z
    .registers 2

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasSha256Certificate([B)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public hasSha256Certificate([BI)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public hasSignatures()Z
    .registers 2

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/util/ArraySet;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 6

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_17

    nop

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, p1

    goto :goto_16

    :cond_15
    move-object v0, p0

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_1e

    return-object p0

    :cond_1e
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    if-nez v0, :cond_25

    return-object p0

    :cond_25
    move-object v1, p0

    if-ne v0, p0, :cond_2d

    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_42

    :cond_2d
    packed-switch p2, :pswitch_data_44

    goto :goto_42

    :pswitch_31  #0x2
    invoke-direct {p1, p0, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_42

    :pswitch_36  #0x1
    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_42

    :pswitch_3c  #0x0
    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    nop

    :goto_42
    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3c  #00000000
        :pswitch_36  #00000001
        :pswitch_31  #00000002
    .end packed-switch
.end method

.method public signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
