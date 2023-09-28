# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;
.super Ljava/lang/Object;


# instance fields
.field protected _out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public abstract getRawOutputStream()Ljava/io/OutputStream;
.end method
