# classes4.dex

.class public final synthetic Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Landroid/widget/RemoteCollectionItemsAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RemoteCollectionItemsAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteCollectionItemsAdapter;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteCollectionItemsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->lambda$initLayoutIdToViewType$0$android-widget-RemoteCollectionItemsAdapter(I)I

    move-result p1

    return p1
.end method
