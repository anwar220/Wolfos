# classes4.dex

.class public final synthetic Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

.field public final synthetic f$1:Landroid/widget/RemoteViews$InteractionHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    iget-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->lambda$apply$0$android-widget-RemoteViews$SetPendingIntentTemplate(Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
