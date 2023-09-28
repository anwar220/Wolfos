# classes2.dex

.class public abstract Landroid/net/PlatformVpnProfile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PlatformVpnProfile$PlatformVpnType;
    }
.end annotation


# static fields
.field public static final MAX_MTU_DEFAULT:I = 0x550

.field public static final TYPE_IKEV2_IPSEC_PSK:I = 0x7

.field public static final TYPE_IKEV2_IPSEC_RSA:I = 0x8

.field public static final TYPE_IKEV2_IPSEC_USER_PASS:I = 0x6


# instance fields
.field protected final mExcludeLocalRoutes:Z

.field protected final mRequiresInternetValidation:Z

.field protected final mType:I


# direct methods
.method constructor <init>(IZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/PlatformVpnProfile;->mType:I

    iput-boolean p2, p0, Landroid/net/PlatformVpnProfile;->mExcludeLocalRoutes:Z

    iput-boolean p3, p0, Landroid/net/PlatformVpnProfile;->mRequiresInternetValidation:Z

    return-void
.end method

.method public static fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/PlatformVpnProfile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown VPN Profile type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d  #0x6, 0x7, 0x8
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;

    move-result-object v0

    return-object v0

    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_d  #00000006
        :pswitch_d  #00000007
        :pswitch_d  #00000008
    .end packed-switch
.end method


# virtual methods
.method public final areLocalRoutesExcluded()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/PlatformVpnProfile;->mExcludeLocalRoutes:Z

    return v0
.end method

.method public final getType()I
    .registers 2

    iget v0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    return v0
.end method

.method public final getTypeString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    packed-switch v0, :pswitch_data_12

    const-string v0, "Unknown VPN profile type"

    return-object v0

    :pswitch_8  #0x8
    const-string v0, "IKEv2/IPsec RSA Digital Signature"

    return-object v0

    :pswitch_b  #0x7
    const-string v0, "IKEv2/IPsec Preshared key"

    return-object v0

    :pswitch_e  #0x6
    const-string v0, "IKEv2/IPsec Username/Password"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_e  #00000006
        :pswitch_b  #00000007
        :pswitch_8  #00000008
    .end packed-switch
.end method

.method public final isInternetValidationRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/PlatformVpnProfile;->mRequiresInternetValidation:Z

    return v0
.end method

.method public abstract toVpnProfile()Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
