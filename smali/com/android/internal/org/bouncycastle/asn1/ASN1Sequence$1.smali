# classes4.dex

.class Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pos:I

.field final synthetic this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;->pos:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;->pos:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;->pos:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;->pos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
