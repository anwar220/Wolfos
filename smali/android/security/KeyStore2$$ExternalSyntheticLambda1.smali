# classes3.dex

.class public final synthetic Landroid/security/KeyStore2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/KeyStore2$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0, p1}, Landroid/security/KeyStore2;->lambda$getSecurityLevel$5(ILandroid/system/keystore2/IKeystoreService;)Landroid/security/KeyStoreSecurityLevel;

    move-result-object p1

    return-object p1
.end method
