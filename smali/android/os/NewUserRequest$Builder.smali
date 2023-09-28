# classes3.dex

.class public final Landroid/os/NewUserRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/NewUserRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountOptions:Landroid/os/PersistableBundle;

.field private mAccountType:Ljava/lang/String;

.field private mAdmin:Z

.field private mEphemeral:Z

.field private mName:Ljava/lang/String;

.field private mUserIcon:Landroid/graphics/Bitmap;

.field private mUserType:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccountName(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mAccountName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccountOptions(Landroid/os/NewUserRequest$Builder;)Landroid/os/PersistableBundle;
    .registers 1

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mAccountOptions:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccountType(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mAccountType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdmin(Landroid/os/NewUserRequest$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/NewUserRequest$Builder;->mAdmin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEphemeral(Landroid/os/NewUserRequest$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/NewUserRequest$Builder;->mEphemeral:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmName(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserIcon(Landroid/os/NewUserRequest$Builder;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mUserIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserType(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.os.usertype.full.SECONDARY"

    iput-object v0, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    return-void
.end method

.method private checkIfPropertiesAreCompatible()V
    .registers 4

    iget-object v0, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-boolean v1, p0, Landroid/os/NewUserRequest$Builder;->mAdmin:Z

    if-eqz v1, :cond_2c

    const-string v1, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2c

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin user can\'t be of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/os/NewUserRequest$Builder;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Landroid/os/NewUserRequest$Builder;->mAccountType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_3b

    return-void

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Account name and account type should be provided together."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Usertype cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/os/NewUserRequest;
    .registers 3

    invoke-direct {p0}, Landroid/os/NewUserRequest$Builder;->checkIfPropertiesAreCompatible()V

    new-instance v0, Landroid/os/NewUserRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/NewUserRequest;-><init>(Landroid/os/NewUserRequest$Builder;Landroid/os/NewUserRequest-IA;)V

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Landroid/os/NewUserRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mAccountName:Ljava/lang/String;

    return-object p0
.end method

.method public setAccountOptions(Landroid/os/PersistableBundle;)Landroid/os/NewUserRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mAccountOptions:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setAccountType(Ljava/lang/String;)Landroid/os/NewUserRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public setAdmin()Landroid/os/NewUserRequest$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/NewUserRequest$Builder;->mAdmin:Z

    return-object p0
.end method

.method public setEphemeral()Landroid/os/NewUserRequest$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/NewUserRequest$Builder;->mEphemeral:Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/os/NewUserRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIcon(Landroid/graphics/Bitmap;)Landroid/os/NewUserRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mUserIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setUserType(Ljava/lang/String;)Landroid/os/NewUserRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    return-object p0
.end method
