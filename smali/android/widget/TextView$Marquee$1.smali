# classes4.dex

.class Landroid/widget/TextView$Marquee$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TextView$Marquee$1;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextView$Marquee$1;->this$0:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->tick()V

    return-void
.end method