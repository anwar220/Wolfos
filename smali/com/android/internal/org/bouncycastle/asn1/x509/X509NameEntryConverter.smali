# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canBePrintable(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected convertHexEncoded(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConvertedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.end method
