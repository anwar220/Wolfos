# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private key:[B


# direct methods
.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getKey()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-object v0
.end method
