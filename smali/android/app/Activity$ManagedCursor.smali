# classes.dex

.class final Landroid/app/Activity$ManagedCursor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManagedCursor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mReleased:Z

.field private mUpdated:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;
    .registers 1

    iget-object p0, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdated(Landroid/app/Activity$ManagedCursor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdated(Landroid/app/Activity$ManagedCursor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return-void
.end method

.method constructor <init>(Landroid/database/Cursor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return-void
.end method
