# classes4.dex

.class Landroid/widget/Gallery$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Landroid/widget/Gallery;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Gallery;->-$$Nest$fputmSuppressSelectionChanged(Landroid/widget/Gallery;Z)V

    iget-object v0, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->selectionChanged()V

    return-void
.end method
