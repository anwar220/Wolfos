# classes3.dex

.class public final synthetic Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/security/KeyStoreOperation;


# direct methods
.method public synthetic constructor <init>(Landroid/security/KeyStoreOperation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda0;->f$0:Landroid/security/KeyStoreOperation;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda0;->f$0:Landroid/security/KeyStoreOperation;

    invoke-virtual {v0}, Landroid/security/KeyStoreOperation;->lambda$abort$3$android-security-KeyStoreOperation()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
