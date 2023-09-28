# classes3.dex

.class public final synthetic Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/security/KeyStoreOperation;

.field public final synthetic f$1:[B

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Landroid/security/KeyStoreOperation;[B[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda2;->f$0:Landroid/security/KeyStoreOperation;

    iput-object p2, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda2;->f$1:[B

    iput-object p3, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda2;->f$2:[B

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda2;->f$0:Landroid/security/KeyStoreOperation;

    iget-object v1, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda2;->f$1:[B

    iget-object v2, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda2;->f$2:[B

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStoreOperation;->lambda$finish$2$android-security-KeyStoreOperation([B[B)[B

    move-result-object v0

    return-object v0
.end method
