# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;
    .registers 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;

    return-object v0

    :cond_8
    nop

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
