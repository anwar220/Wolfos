# classes3.dex

.class Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfo:Landroid/telecom/CallerInfo;

.field private mContext:Landroid/content/Context;

.field private mPendingListenerCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/telecom/CallerInfoAsyncQuery;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/telecom/CallerInfo;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQueryUri(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Landroid/telecom/CallerInfoAsyncQuery;

    invoke-static {p2}, Landroid/telecom/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    iput-object p2, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 23

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    new-array v1, v11, [Ljava/lang/Object;

    const-string v12, "CallerInfoAsyncQuery"

    invoke-static {v12, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v13, p2

    check-cast v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    if-nez v13, :cond_34

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "Cookie is null, ignoring onQueryComplete() request."

    invoke-static {v12, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_33

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_33
    return-void

    :cond_34
    iget v0, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v14, 0x3

    if-ne v0, v14, :cond_5f

    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_3f

    :cond_4f
    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Landroid/telecom/CallerInfoAsyncQuery;

    invoke-static {v0}, Landroid/telecom/CallerInfoAsyncQuery;->-$$Nest$mrelease(Landroid/telecom/CallerInfoAsyncQuery;)V

    if-eqz v10, :cond_5e

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_5e
    return-void

    :cond_5f
    iget v0, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v15, 0x0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_8c

    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-eqz v0, :cond_6d

    iget-object v1, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->geoDescription:Ljava/lang/String;

    iput-object v1, v0, Landroid/telecom/CallerInfo;->geoDescription:Ljava/lang/String;

    :cond_6d
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v0, v15}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    move-object v6, v0

    iput v14, v6, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v6

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    move v11, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_8c
    move v11, v7

    :goto_8d
    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-nez v0, :cond_137

    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12f

    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-eqz v0, :cond_12f

    iget v0, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_ac

    new-instance v0, Landroid/telecom/CallerInfo;

    invoke-direct {v0}, Landroid/telecom/CallerInfo;-><init>()V

    iget-object v1, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/telecom/CallerInfo;->markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;

    move-result-object v0

    iput-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    goto :goto_119

    :cond_ac
    iget v0, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c1

    new-instance v0, Landroid/telecom/CallerInfo;

    invoke-direct {v0}, Landroid/telecom/CallerInfo;-><init>()V

    iget-object v1, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget v2, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    invoke-virtual {v0, v1, v2}, Landroid/telecom/CallerInfo;->markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;

    move-result-object v0

    iput-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    goto :goto_119

    :cond_c1
    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v0, v1, v10}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;

    move-result-object v0

    iput-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v2, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-static {v0, v1, v2}, Landroid/telecom/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;

    move-result-object v7

    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-eq v7, v0, :cond_db

    iput-object v7, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    :cond_db
    iget-object v0, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f8

    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v1, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v2, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v2, v2, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/CallerInfo;->setPhoneNumber(Ljava/lang/String;)V

    :cond_f8
    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-virtual {v0}, Landroid/telecom/CallerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_117

    iput v11, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v13

    move-object/from16 v17, v7

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_117
    move-object/from16 v17, v7

    :goto_119
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v0, v15}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    move-object v11, v0

    iput v14, v11, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v11

    invoke-virtual/range {v0 .. v7}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_137

    :cond_12f
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_137
    :goto_137
    iget-object v0, v13, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_146

    iget-object v0, v8, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    new-instance v1, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;

    invoke-direct {v1, v8, v13, v9}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14e

    :cond_146
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "There is no listener to notify for this query."

    invoke-static {v12, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_14e
    if-eqz v10, :cond_153

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_153
    return-void
.end method
