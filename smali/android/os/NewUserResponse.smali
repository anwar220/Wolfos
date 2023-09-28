# classes3.dex

.class public final Landroid/os/NewUserResponse;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mOperationResult:I

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    iput p2, p0, Landroid/os/NewUserResponse;->mOperationResult:I

    return-void
.end method


# virtual methods
.method public getOperationResult()I
    .registers 2

    iget v0, p0, Landroid/os/NewUserResponse;->mOperationResult:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    iget-object v0, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public isSuccessful()Z
    .registers 2

    iget-object v0, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
