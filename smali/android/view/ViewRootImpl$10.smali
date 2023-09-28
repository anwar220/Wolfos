# classes3.dex

.class Landroid/view/ViewRootImpl$10;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    iput-object p1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.miui.gallery"

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$10;->add(Ljava/lang/Object;)Z

    const-string v0, "com.miui.mediaeditor"

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$10;->add(Ljava/lang/Object;)Z

    const-string v0, "com.miui.extraphoto"

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$10;->add(Ljava/lang/Object;)Z

    return-void
.end method
