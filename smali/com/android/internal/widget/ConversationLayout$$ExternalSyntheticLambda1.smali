# classes4.dex

.class public final synthetic Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/ConversationLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/ConversationLayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/ConversationLayout;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/ConversationLayout;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$1$com-android-internal-widget-ConversationLayout(Ljava/lang/Boolean;)V

    return-void
.end method
