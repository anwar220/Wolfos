# classes3.dex

.class public Landroid/os/UserManager$UserOperationException;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserOperationException"
.end annotation


# instance fields
.field private final mUserOperationResult:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/os/UserManager$UserOperationException;->mUserOperationResult:I

    return-void
.end method

.method public static from(Landroid/os/ServiceSpecificException;)Landroid/os/UserManager$UserOperationException;
    .registers 4

    new-instance v0, Landroid/os/UserManager$UserOperationException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v1, v2}, Landroid/os/UserManager$UserOperationException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public getUserOperationResult()I
    .registers 2

    iget v0, p0, Landroid/os/UserManager$UserOperationException;->mUserOperationResult:I

    return v0
.end method
