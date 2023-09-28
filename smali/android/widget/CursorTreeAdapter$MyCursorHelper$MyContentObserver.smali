# classes4.dex

.class Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method public constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object p1, p1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-static {p1}, Landroid/widget/CursorTreeAdapter;->-$$Nest$fgetmHandler(Landroid/widget/CursorTreeAdapter;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 4

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-static {v0}, Landroid/widget/CursorTreeAdapter;->-$$Nest$fgetmAutoRequery(Landroid/widget/CursorTreeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-static {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-$$Nest$fgetmCursor(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-static {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-$$Nest$fgetmCursor(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-static {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-$$Nest$fgetmCursor(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-$$Nest$fputmDataValid(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)V

    :cond_2b
    return-void
.end method
