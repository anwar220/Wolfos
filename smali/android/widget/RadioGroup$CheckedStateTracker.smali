# classes4.dex

.class Landroid/widget/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RadioGroup;


# direct methods
.method private constructor <init>(Landroid/widget/RadioGroup;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$CheckedStateTracker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v0}, Landroid/widget/RadioGroup;->-$$Nest$fgetmProtectFromCheckedChange(Landroid/widget/RadioGroup;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/RadioGroup;->-$$Nest$fputmProtectFromCheckedChange(Landroid/widget/RadioGroup;Z)V

    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v0}, Landroid/widget/RadioGroup;->-$$Nest$fgetmCheckedId(Landroid/widget/RadioGroup;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v0}, Landroid/widget/RadioGroup;->-$$Nest$fgetmCheckedId(Landroid/widget/RadioGroup;)I

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/widget/RadioGroup;->-$$Nest$msetCheckedStateForView(Landroid/widget/RadioGroup;IZ)V

    :cond_22
    iget-object v0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v0, v2}, Landroid/widget/RadioGroup;->-$$Nest$fputmProtectFromCheckedChange(Landroid/widget/RadioGroup;Z)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v1, v0}, Landroid/widget/RadioGroup;->-$$Nest$msetCheckedId(Landroid/widget/RadioGroup;I)V

    return-void
.end method
