# classes4.dex

.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_9

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_e

    :cond_9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_e
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "uri_content"

    packed-switch p1, :pswitch_data_bc

    goto :goto_68

    :pswitch_18  #0x3
    const/4 v2, 0x1

    :try_start_19
    const-string/jumbo v8, "tel"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, v5

    goto :goto_36

    :pswitch_26  #0x2
    const/4 v2, 0x1

    const-string/jumbo v8, "mailto"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, v5

    goto :goto_4c

    :catchall_34
    move-exception v4

    goto :goto_62

    :goto_36
    :pswitch_36  #0x1
    if-eqz p3, :cond_68

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v0, v8

    goto :goto_68

    :goto_4c
    :pswitch_4c  #0x0
    if-eqz p3, :cond_68

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8
    :try_end_60
    .catchall {:try_start_19 .. :try_end_60} :catchall_34

    move-object v0, v8

    goto :goto_68

    :goto_62
    if-eqz p3, :cond_67

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_67
    throw v4

    :cond_68
    :goto_68
    if-eqz p3, :cond_6d

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6d
    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v4, v0}, Landroid/widget/QuickContactBadge;->-$$Nest$fputmContactUri(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V

    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v4}, Landroid/widget/QuickContactBadge;->-$$Nest$monContactUriChanged(Landroid/widget/QuickContactBadge;)V

    if-eqz v2, :cond_9b

    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v4}, Landroid/widget/QuickContactBadge;->-$$Nest$fgetmContactUri(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_9b

    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v5}, Landroid/widget/QuickContactBadge;->-$$Nest$fgetmContactUri(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v7, v7, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v8}, Landroid/widget/QuickContactBadge;->-$$Nest$fgetmPrioritizedMimeType(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :cond_9b
    if-eqz v1, :cond_ba

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v3, :cond_b1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_b1
    iget-object v5, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_ba
    :goto_ba
    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_4c  #00000000
        :pswitch_36  #00000001
        :pswitch_26  #00000002
        :pswitch_18  #00000003
    .end packed-switch
.end method
