# classes.dex

.class final Landroid/accounts/AccountManager$UserIdPackage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserIdPackage"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/accounts/AccountManager$UserIdPackage;->userId:I

    iput-object p2, p0, Landroid/accounts/AccountManager$UserIdPackage;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v0

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/accounts/AccountManager$UserIdPackage;

    iget v3, v2, Landroid/accounts/AccountManager$UserIdPackage;->userId:I

    iget v4, p0, Landroid/accounts/AccountManager$UserIdPackage;->userId:I

    if-ne v3, v4, :cond_27

    iget-object v3, v2, Landroid/accounts/AccountManager$UserIdPackage;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/accounts/AccountManager$UserIdPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v0, v1

    :cond_27
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Landroid/accounts/AccountManager$UserIdPackage;->userId:I

    iget-object v1, p0, Landroid/accounts/AccountManager$UserIdPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
