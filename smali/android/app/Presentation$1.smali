# classes.dex

.class Landroid/app/Presentation$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Presentation;


# direct methods
.method constructor <init>(Landroid/app/Presentation;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$mhandleDisplayChanged(Landroid/app/Presentation;)V

    :cond_11
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$mhandleDisplayRemoved(Landroid/app/Presentation;)V

    :cond_11
    return-void
.end method
