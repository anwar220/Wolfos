# classes3.dex

.class public final synthetic Landroid/security/KeyStore2$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/KeyStore2$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/system/keystore2/KeyDescriptor;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iput p2, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iget v1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;->f$2:I

    invoke-static {v0, v1, v2, p1}, Landroid/security/KeyStore2;->lambda$grant$2(Landroid/system/keystore2/KeyDescriptor;IILandroid/system/keystore2/IKeystoreService;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    return-object p1
.end method
