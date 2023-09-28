# classes4.dex

.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogAbandonRunnable"
.end annotation


# instance fields
.field private mIsPending:Z

.field final synthetic this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;


# direct methods
.method private constructor <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;-><init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V

    return-void
.end method


# virtual methods
.method flush()V
    .registers 2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmTextView(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->run()V

    return-void
.end method

.method public run()V
    .registers 8

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmLogger(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move-result-object v1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v3

    const/16 v4, 0x6b

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fputmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V

    invoke-static {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fputmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmLogger(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->endTextClassificationSession()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    :cond_32
    return-void
.end method

.method schedule(I)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_e

    const-string v0, "SelectActionModeHelper"

    const-string v1, "Force flushing abandon due to new scheduling request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->flush()V

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmTextView(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
