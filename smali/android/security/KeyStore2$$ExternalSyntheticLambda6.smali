# classes3.dex

.class public final synthetic Landroid/security/KeyStore2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/KeyStore2$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/system/keystore2/KeyDescriptor;


# direct methods
.method public synthetic constructor <init>(Landroid/system/keystore2/KeyDescriptor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda6;->f$0:Landroid/system/keystore2/KeyDescriptor;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda6;->f$0:Landroid/system/keystore2/KeyDescriptor;

    invoke-static {v0, p1}, Landroid/security/KeyStore2;->lambda$delete$0(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
