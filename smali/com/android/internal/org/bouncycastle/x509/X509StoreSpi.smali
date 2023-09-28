# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/x509/X509StoreSpi;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract engineGetMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;
.end method

.method public abstract engineInit(Lcom/android/internal/org/bouncycastle/x509/X509StoreParameters;)V
.end method
