# classes4.dex

.class public final synthetic Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/RemoteViews$SetOnClickResponse;

.field public final synthetic f$1:Landroid/widget/RemoteViews$InteractionHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RemoteViews$SetOnClickResponse;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetOnClickResponse;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetOnClickResponse;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews$SetOnClickResponse;->lambda$apply$0$android-widget-RemoteViews$SetOnClickResponse(Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;)V

    return-void
.end method
