" Vim syntax file
" Language:    jQuery
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: May 4th, 2011
" Version:     0.5
" URL:         http://api.jquery.com/
" Modified:    Jose Elera Campana <jelera@gmail.com>

" ADDED: Replaced the ^j keyword with jQuery

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'javascript'
endif

ru! syntax/javascript.vim
unlet b:current_syntax

syn match   jQueryObject          /jQuery\|\$/


syn match   jQueryFunc           /\.\w\+(\@=/ contains=@jQueryFunctions

syn cluster jQueryFunctions      contains=jQueryAjax,jQueryAttributes,jQueryCore,jQueryCSS,jQueryData,jQueryDeferred,jQueryDimensions,jQueryEffects,jQueryEvents,jQueryManipulation,jQueryMiscellaneous,jQueryOffset,jQueryProperties,jQueryTraversing,jQueryUtilities
syn keyword jQueryAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syn keyword jQueryAjax           contained param serialize serializeArray
syn keyword jQueryAjax           contained ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport
syn keyword jQueryAjax           contained gQueryet getJSON getScript load post
syn keyword jQueryAttributes     contained addClass attr hasClass prop removeAttr removeClass removeProp toggleClass val
syn keyword jQueryCore           contained holdReady noConflict sub when
syn keyword jQueryCSS            contained css cssHooks
syn keyword jQueryData           contained clearQueue data dequeue hasData queue removeData
syn keyword jQueryDeferred       contained Deferred always done fail isRejected isResolved pipe promise reject rejectWith resolved resolveWith then
syn keyword jQueryDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syn keyword jQueryEffects        contained hide show toggle
syn keyword jQueryEffects        contained animate delay stop
syn keyword jQueryEffects        contained fadeIn fadeOut fadeTo fadeToggle
syn keyword jQueryEffects        contained slideDown slideToggle slideUp
syn keyword jQueryEvents         contained error resize scroll
syn keyword jQueryEvents         contained ready unload
syn keyword jQueryEvents         contained bind delegate die live one proxy trigger triggerHandler unbind undelegate
syn keyword jQueryEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syn keyword jQueryEvents         contained blur change focus select submit
syn keyword jQueryEvents         contained focusin focusout keydown keypress keyup
syn keyword jQueryEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syn keyword jQueryManipulation   contained clone
syn keyword jQueryManipulation   contained unwrap wrap wrapAll wrapInner
syn keyword jQueryManipulation   contained append appendTo html preprend prependTo text
syn keyword jQueryManipulation   contained after before insertAfter insertBefore
syn keyword jQueryManipulation   contained detach empty remove
syn keyword jQueryManipulation   contained replaceAll replaceWith
syn keyword jQueryMiscellaneous  contained index size toArray
syn keyword jQueryOffset         contained offset offsetParent position scrollTop scrollLeft
syn keyword jQueryProperties     contained browser context fx.interval fx.off length selector support
syn keyword jQueryTraversing     contained eq filter first has is last map not slice
syn keyword jQueryTraversing     contained add andSelf contents end
syn keyword jQueryTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings
syn keyword jQueryUtilities      contained contains each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique


syn region  javaScriptStringD          start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=javaScriptSpecial,@htmlPreproc,@jQuerySelectors
syn region  javaScriptStringS          start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=javaScriptSpecial,@htmlPreproc,@jQuerySelectors

syn cluster jQuerySelectors      contains=jQueryId,jQueryClass,jQueryOperators,jQueryBasicFilters,jQueryContentFilters,jQueryVisibility,jQueryChildFilters,jQueryForms,jQueryFormFilters
syn match   jQueryId             contained /#[0-9A-Za-z_\-]\+/
syn match   jQueryClass          contained /\.[0-9A-Za-z_\-]\+/
syn match   jQueryOperators      contained /*\|>\|+\|-\|~/
syn match   jQueryBasicFilters   contained /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lt\|not\|odd\)/
syn match   jQueryChildFilters   contained /:\(first\|last\|nth\|only\)-child/
syn match   jQueryContentFilters contained /:\(contains\|empty\|has\|parent\)/
syn match   jQueryForms          contained /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
syn match   jQueryVisibility     contained /:\(hidden\|visible\)/


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lisp_syntax_inits")
  if version < 508
    let did_lisp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jQueryObject          Constant

  HiLink jQueryAjax           Function
  HiLink jQueryAttributes     Function
  HiLink jQueryCore           Function
  HiLink jQueryCSS            Function
  HiLink jQueryData           Function
  HiLink jQueryDeferred       Function
  HiLink jQueryDimensions     Function
  HiLink jQueryEffects        Function
  HiLink jQueryEvents         Function
  HiLink jQueryManipulation   Function
  HiLink jQueryMiscellaneous  Function
  HiLink jQueryOffset         Function
  HiLink jQueryProperties     Function
  HiLink jQueryTraversing     Function
  HiLink jQueryUtilities      Function

  HiLink jQueryId             Identifier
  HiLink jQueryClass          Constant
  HiLink jQueryOperators      Special
  HiLink jQueryBasicFilters   Statement
  HiLink jQueryContentFilters Statement
  HiLink jQueryVisibility     Statement
  HiLink jQueryChildFilters   Statement
  HiLink jQueryForms          Statement
  HiLink jQueryFormFilters    Statement

  delcommand HiLink
endif


let b:current_syntax = 'jquery'
