# classes2.dex

.class Landroid/media/permission/CompositeSafeCloseable;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# instance fields
.field private final mChildren:[Landroid/media/permission/SafeCloseable;


# direct methods
.method varargs constructor <init>([Landroid/media/permission/SafeCloseable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/permission/CompositeSafeCloseable;->mChildren:[Landroid/media/permission/SafeCloseable;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Landroid/media/permission/CompositeSafeCloseable;->mChildren:[Landroid/media/permission/SafeCloseable;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_11

    iget-object v1, p0, Landroid/media/permission/CompositeSafeCloseable;->mChildren:[Landroid/media/permission/SafeCloseable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_11
    return-void
.end method
