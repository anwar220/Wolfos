# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;


# static fields
.field public static final INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z
    .registers 9

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_e

    return v4

    :cond_e
    const/4 v2, 0x0

    :goto_f
    array-length v3, v0

    if-eq v2, v3, :cond_20

    aget-object v3, v0, v2

    aget-object v5, v1, v2

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-nez v3, :cond_1d

    return v4

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_20
    const/4 v2, 0x1

    return v2
.end method
