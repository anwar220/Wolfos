# classes4.dex

.class public final synthetic Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/CallLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/CallLayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/CallLayout;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/CallLayout;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$onFinishInflate$0$com-android-internal-widget-CallLayout(Ljava/lang/Boolean;)V

    return-void
.end method