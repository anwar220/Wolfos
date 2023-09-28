# classes3.dex

.class public final Landroid/security/identity/AccessControlProfile$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/AccessControlProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mProfile:Landroid/security/identity/AccessControlProfile;


# direct methods
.method public constructor <init>(Landroid/security/identity/AccessControlProfileId;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/identity/AccessControlProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/identity/AccessControlProfile;-><init>(Landroid/security/identity/AccessControlProfile-IA;)V

    iput-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    invoke-static {v0, p1}, Landroid/security/identity/AccessControlProfile;->-$$Nest$fputmAccessControlProfileId(Landroid/security/identity/AccessControlProfile;Landroid/security/identity/AccessControlProfileId;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/security/identity/AccessControlProfile;
    .registers 2

    iget-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    return-object v0
.end method

.method public setReaderCertificate(Ljava/security/cert/X509Certificate;)Landroid/security/identity/AccessControlProfile$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    invoke-static {v0, p1}, Landroid/security/identity/AccessControlProfile;->-$$Nest$fputmReaderCertificate(Landroid/security/identity/AccessControlProfile;Ljava/security/cert/X509Certificate;)V

    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/identity/AccessControlProfile$Builder;
    .registers 3

    iget-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    invoke-static {v0, p1}, Landroid/security/identity/AccessControlProfile;->-$$Nest$fputmUserAuthenticationRequired(Landroid/security/identity/AccessControlProfile;Z)V

    return-object p0
.end method

.method public setUserAuthenticationTimeout(J)Landroid/security/identity/AccessControlProfile$Builder;
    .registers 4

    iget-object v0, p0, Landroid/security/identity/AccessControlProfile$Builder;->mProfile:Landroid/security/identity/AccessControlProfile;

    invoke-static {v0, p1, p2}, Landroid/security/identity/AccessControlProfile;->-$$Nest$fputmUserAuthenticationTimeout(Landroid/security/identity/AccessControlProfile;J)V

    return-object p0
.end method
