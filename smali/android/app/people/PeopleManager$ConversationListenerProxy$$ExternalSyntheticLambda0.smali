# classes.dex

.class public final synthetic Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/people/PeopleManager$ConversationListenerProxy;

.field public final synthetic f$1:Landroid/app/people/ConversationChannel;


# direct methods
.method public synthetic constructor <init>(Landroid/app/people/PeopleManager$ConversationListenerProxy;Landroid/app/people/ConversationChannel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/app/people/PeopleManager$ConversationListenerProxy;

    iput-object p2, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/app/people/ConversationChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/app/people/PeopleManager$ConversationListenerProxy;

    iget-object v1, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/app/people/ConversationChannel;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleManager$ConversationListenerProxy;->lambda$onConversationUpdate$0$android-app-people-PeopleManager$ConversationListenerProxy(Landroid/app/people/ConversationChannel;)V

    return-void
.end method
