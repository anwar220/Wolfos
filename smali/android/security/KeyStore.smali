# classes3.dex

.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field private static final KEY_STORE:Landroid/security/KeyStore;

.field public static final NO_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/security/KeyStore;

    invoke-direct {v0}, Landroid/security/KeyStore;-><init>()V

    sput-object v0, Landroid/security/KeyStore;->KEY_STORE:Landroid/security/KeyStore;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .registers 1

    sget-object v0, Landroid/security/KeyStore;->KEY_STORE:Landroid/security/KeyStore;

    return-object v0
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .registers 4

    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x2710

    const-string v2, "Should not be called."

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addAuthToken([B)I
    .registers 3

    invoke-static {p1}, Landroid/security/Authorization;->addAuthToken([B)I

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public listUidsOfAuthBoundKeys()[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeviceOffBody()V
    .registers 1

    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->onDeviceOffBody()V

    return-void
.end method

.method public state()Landroid/security/KeyStore$State;
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .registers 4

    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->getState(I)I

    move-result v0

    packed-switch v0, :pswitch_data_16

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_d  #0x2
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :pswitch_10  #0x1
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :pswitch_13  #0x0
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object v1

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_10  #00000001
        :pswitch_d  #00000002
    .end packed-switch
.end method

.method public unlock(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
