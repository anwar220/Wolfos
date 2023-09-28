# classes.dex

.class Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewApplyListener"
.end annotation


# instance fields
.field private final mIsReapply:Z

.field private final mLayoutId:I

.field private final mViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V
    .registers 5

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iput p3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    iput-boolean p4, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 13

    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iget-object v4, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v5}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmAsyncExecutor(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iget v10, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    invoke-direct {v7, v8, v9, v10, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmInteractionHandler(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v8

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmCurrentSize(Landroid/appwidget/AppWidgetHostView;)Landroid/util/SizeF;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V

    goto :goto_36

    :cond_31
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v0, v2, v1, p1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    :goto_36
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v0, v2}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x1

    iput v1, v0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-boolean v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmLastInflatedRemoteViews(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastInflatedRemoteViewsId(Landroid/appwidget/AppWidgetHostView;J)V

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->restoreInstanceState()V

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v0, v2}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V

    return-void
.end method
