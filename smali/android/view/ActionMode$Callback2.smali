# classes3.dex

.class public abstract Landroid/view/ActionMode$Callback2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback2"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_12

    :cond_f
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_12
    return-void
.end method
