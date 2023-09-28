# classes.dex

.class Landroid/app/people/PeopleManager$ConversationListenerProxy;
.super Landroid/app/people/IConversationListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/PeopleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationListenerProxy"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Landroid/app/people/PeopleManager$ConversationListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/app/people/PeopleManager$ConversationListener;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/people/IConversationListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mListener:Landroid/app/people/PeopleManager$ConversationListener;

    return-void
.end method


# virtual methods
.method synthetic lambda$onConversationUpdate$0$android-app-people-PeopleManager$ConversationListenerProxy(Landroid/app/people/ConversationChannel;)V
    .registers 3

    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mListener:Landroid/app/people/PeopleManager$ConversationListener;

    invoke-interface {v0, p1}, Landroid/app/people/PeopleManager$ConversationListener;->onConversationUpdate(Landroid/app/people/ConversationChannel;)V

    return-void
.end method

.method public onConversationUpdate(Landroid/app/people/ConversationChannel;)V
    .registers 4

    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mListener:Landroid/app/people/PeopleManager$ConversationListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    new-instance v1, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/app/people/PeopleManager$ConversationListenerProxy;Landroid/app/people/ConversationChannel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_12
    :goto_12
    invoke-static {}, Landroid/app/people/PeopleManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder is dead"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
